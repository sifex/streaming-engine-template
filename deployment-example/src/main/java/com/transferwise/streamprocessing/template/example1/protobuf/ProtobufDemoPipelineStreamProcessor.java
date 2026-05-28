package com.transferwise.streamprocessing.template.example1.protobuf;

import com.transferwise.streamprocessing.server.StreamProcessor;
import org.apache.kafka.streams.StreamsBuilder;
import org.springframework.stereotype.Component;

@Component
public class ProtobufDemoPipelineStreamProcessor implements StreamProcessor {

    @Override
    public void topology(StreamsBuilder builder) {
        // TODO: Implement your stream processing topology here
    }
}
