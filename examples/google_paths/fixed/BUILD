load("@pip_deps//:requirements.bzl", "requirement")
#load(":rules.bzl", "py_binary")

py_binary(
    name = 'example',
    srcs = ['example.py'],
    deps = [
        #requirement('google-cloud'),
        requirement('grpc-google-iam-v1'),
    ]
)
