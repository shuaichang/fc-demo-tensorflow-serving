FROM tensorflow/serving

ENV MODEL_NAME=half_plus_two

COPY ./testdata/saved_model_half_plus_two_cpu /models/half_plus_two

ENTRYPOINT ["/usr/bin/tf_serving_entrypoint.sh"]
