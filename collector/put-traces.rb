require 'securerandom'


def send_trace(trace_id, parent_uuid = nil)
  parent_uuid = SecureRandom.hex(8) if parent_uuid.nil?
  parent_uuid.gsub!("-", "")
  cmd = <<EOS
  otel-cli exec  \
  --endpoint 0.0.0.0:4317 \
  --force-trace-id #{trace_id} \
  --force-parent-span-id #{parent_uuid} \
  --traces-endpoint http://0.0.0.0:4318/v1/traces \
  --protocol grpc \
  --verbose \
  --service sample \
  --name "sample" \
 time
EOS
  `#{cmd}`
  parent_uuid
end

parent_uuid = nil
trace_id = SecureRandom.hex(16)
5.times do
  parent_uuid = send_trace(trace_id, parent_uuid)
end
