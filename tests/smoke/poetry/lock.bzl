# This file is generated by rules_pycross.
# It is not intended for manual editing.
"""Pycross-generated dependency targets."""

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@jvolkman_rules_pycross//pycross:defs.bzl", "pycross_wheel_build", "pycross_wheel_library", "pypi_file")

PINS = {
    "appnope": "appnope_0.1.3",
    "asttokens": "asttokens_2.4.1",
    "decorator": "decorator_5.1.1",
    "exceptiongroup": "exceptiongroup_1.2.0",
    "executing": "executing_2.0.1",
    "ipython": "ipython_8.17.2",
    "jedi": "jedi_0.19.1",
    "matplotlib_inline": "matplotlib_inline_0.1.6",
    "parso": "parso_0.8.3",
    "pexpect": "pexpect_4.9.0",
    "prompt_toolkit": "prompt_toolkit_3.0.41",
    "ptyprocess": "ptyprocess_0.7.0",
    "pure_eval": "pure_eval_0.2.2",
    "pygments": "pygments_2.17.2",
    "regex": "regex_2023.10.3",
    "setuptools": "setuptools_68.2.2",
    "six": "six_1.16.0",
    "stack_data": "stack_data_0.6.3",
    "traitlets": "traitlets_5.14.0",
    "wcwidth": "wcwidth_0.2.12",
    "wheel": "wheel_0.41.3",
    "zstandard": "zstandard_0.22.0",
}

# buildifier: disable=unnamed-macro
def targets():
    """Generated package targets."""

    for pin_name, pin_target in PINS.items():
        native.alias(
            name = pin_name,
            actual = ":" + pin_target,
        )

    # buildifier: disable=unused-variable
    _target = select({
        "@pycross_toolchains//:python_3.10.12_aarch64-apple-darwin_config": "@pycross_toolchains//:python_3.10.12_aarch64-apple-darwin.json",
        "@pycross_toolchains//:python_3.10.12_aarch64-unknown-linux-gnu_config": "@pycross_toolchains//:python_3.10.12_aarch64-unknown-linux-gnu.json",
        "@pycross_toolchains//:python_3.10.12_x86_64-apple-darwin_config": "@pycross_toolchains//:python_3.10.12_x86_64-apple-darwin.json",
        "@pycross_toolchains//:python_3.10.12_x86_64-unknown-linux-gnu_config": "@pycross_toolchains//:python_3.10.12_x86_64-unknown-linux-gnu.json",
        "@pycross_toolchains//:python_3.11.6_aarch64-apple-darwin_config": "@pycross_toolchains//:python_3.11.6_aarch64-apple-darwin.json",
        "@pycross_toolchains//:python_3.11.6_aarch64-unknown-linux-gnu_config": "@pycross_toolchains//:python_3.11.6_aarch64-unknown-linux-gnu.json",
        "@pycross_toolchains//:python_3.11.6_x86_64-apple-darwin_config": "@pycross_toolchains//:python_3.11.6_x86_64-apple-darwin.json",
        "@pycross_toolchains//:python_3.11.6_x86_64-unknown-linux-gnu_config": "@pycross_toolchains//:python_3.11.6_x86_64-unknown-linux-gnu.json",
        "@pycross_toolchains//:python_3.12.0_aarch64-apple-darwin_config": "@pycross_toolchains//:python_3.12.0_aarch64-apple-darwin.json",
        "@pycross_toolchains//:python_3.12.0_aarch64-unknown-linux-gnu_config": "@pycross_toolchains//:python_3.12.0_aarch64-unknown-linux-gnu.json",
        "@pycross_toolchains//:python_3.12.0_x86_64-apple-darwin_config": "@pycross_toolchains//:python_3.12.0_x86_64-apple-darwin.json",
        "@pycross_toolchains//:python_3.12.0_x86_64-unknown-linux-gnu_config": "@pycross_toolchains//:python_3.12.0_x86_64-unknown-linux-gnu.json",
    })

    pycross_wheel_library(
        name = "appnope_0.1.3",
        wheel = "@poetry_lock_wheel_appnope_0.1.3_py2.py3_none_any//file",
    )

    _asttokens_2_4_1_deps = [
        ":six_1.16.0",
    ]

    pycross_wheel_library(
        name = "asttokens_2.4.1",
        deps = _asttokens_2_4_1_deps,
        wheel = "@poetry_lock_wheel_asttokens_2.4.1_py2.py3_none_any//file",
    )

    pycross_wheel_library(
        name = "decorator_5.1.1",
        wheel = "@poetry_lock_wheel_decorator_5.1.1_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "exceptiongroup_1.2.0",
        wheel = "@poetry_lock_wheel_exceptiongroup_1.2.0_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "executing_2.0.1",
        wheel = "@poetry_lock_wheel_executing_2.0.1_py2.py3_none_any//file",
    )

    _ipython_8_17_2_deps = [
        ":decorator_5.1.1",
        ":jedi_0.19.1",
        ":matplotlib_inline_0.1.6",
        ":pexpect_4.9.0",
        ":prompt_toolkit_3.0.41",
        ":pygments_2.17.2",
        ":stack_data_0.6.3",
        ":traitlets_5.14.0",
    ] + select({
        "@pycross_toolchains//:python_3.10.12_aarch64-apple-darwin_config": [
            ":appnope_0.1.3",
            ":exceptiongroup_1.2.0",
        ],
        "@pycross_toolchains//:python_3.10.12_aarch64-unknown-linux-gnu_config": [
            ":exceptiongroup_1.2.0",
        ],
        "@pycross_toolchains//:python_3.10.12_x86_64-apple-darwin_config": [
            ":appnope_0.1.3",
            ":exceptiongroup_1.2.0",
        ],
        "@pycross_toolchains//:python_3.10.12_x86_64-unknown-linux-gnu_config": [
            ":exceptiongroup_1.2.0",
        ],
        "@pycross_toolchains//:python_3.11.6_aarch64-apple-darwin_config": [
            ":appnope_0.1.3",
        ],
        "@pycross_toolchains//:python_3.11.6_x86_64-apple-darwin_config": [
            ":appnope_0.1.3",
        ],
        "@pycross_toolchains//:python_3.12.0_aarch64-apple-darwin_config": [
            ":appnope_0.1.3",
        ],
        "@pycross_toolchains//:python_3.12.0_x86_64-apple-darwin_config": [
            ":appnope_0.1.3",
        ],
        "//conditions:default": [],
    })

    pycross_wheel_library(
        name = "ipython_8.17.2",
        deps = _ipython_8_17_2_deps,
        wheel = "@poetry_lock_wheel_ipython_8.17.2_py3_none_any//file",
    )

    _jedi_0_19_1_deps = [
        ":parso_0.8.3",
    ]

    pycross_wheel_library(
        name = "jedi_0.19.1",
        deps = _jedi_0_19_1_deps,
        wheel = "@poetry_lock_wheel_jedi_0.19.1_py2.py3_none_any//file",
    )

    _matplotlib_inline_0_1_6_deps = [
        ":traitlets_5.14.0",
    ]

    pycross_wheel_library(
        name = "matplotlib_inline_0.1.6",
        deps = _matplotlib_inline_0_1_6_deps,
        wheel = "@poetry_lock_wheel_matplotlib_inline_0.1.6_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "parso_0.8.3",
        wheel = "@poetry_lock_wheel_parso_0.8.3_py2.py3_none_any//file",
    )

    _pexpect_4_9_0_deps = [
        ":ptyprocess_0.7.0",
    ]

    pycross_wheel_library(
        name = "pexpect_4.9.0",
        deps = _pexpect_4_9_0_deps,
        wheel = "@poetry_lock_wheel_pexpect_4.9.0_py2.py3_none_any//file",
    )

    _prompt_toolkit_3_0_41_deps = [
        ":wcwidth_0.2.12",
    ]

    pycross_wheel_library(
        name = "prompt_toolkit_3.0.41",
        deps = _prompt_toolkit_3_0_41_deps,
        wheel = "@poetry_lock_wheel_prompt_toolkit_3.0.41_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "ptyprocess_0.7.0",
        wheel = "@poetry_lock_wheel_ptyprocess_0.7.0_py2.py3_none_any//file",
    )

    pycross_wheel_library(
        name = "pure_eval_0.2.2",
        wheel = "@poetry_lock_wheel_pure_eval_0.2.2_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "pygments_2.17.2",
        wheel = "@poetry_lock_wheel_pygments_2.17.2_py3_none_any//file",
    )

    _regex_2023_10_3_build_deps = [
        ":setuptools_68.2.2",
        ":wheel_0.41.3",
    ]

    pycross_wheel_build(
        name = "_build_regex_2023.10.3",
        sdist = "@poetry_lock_sdist_regex_2023.10.3//file",
        target_environment = _target,
        deps = _regex_2023_10_3_build_deps,
        tags = ["manual"],
    )

    pycross_wheel_library(
        name = "regex_2023.10.3",
        wheel = ":_build_regex_2023.10.3",
    )

    pycross_wheel_library(
        name = "setuptools_68.2.2",
        wheel = "@poetry_lock_wheel_setuptools_68.2.2_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "six_1.16.0",
        wheel = "@poetry_lock_wheel_six_1.16.0_py2.py3_none_any//file",
    )

    _stack_data_0_6_3_deps = [
        ":asttokens_2.4.1",
        ":executing_2.0.1",
        ":pure_eval_0.2.2",
    ]

    pycross_wheel_library(
        name = "stack_data_0.6.3",
        deps = _stack_data_0_6_3_deps,
        wheel = "@poetry_lock_wheel_stack_data_0.6.3_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "traitlets_5.14.0",
        wheel = "@poetry_lock_wheel_traitlets_5.14.0_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "wcwidth_0.2.12",
        wheel = "@poetry_lock_wheel_wcwidth_0.2.12_py2.py3_none_any//file",
    )

    pycross_wheel_library(
        name = "wheel_0.41.3",
        wheel = "@poetry_lock_wheel_wheel_0.41.3_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "zstandard_0.22.0",
        wheel = "@//poetry:zstandard_build",
    )

# buildifier: disable=unnamed-macro
def repositories():
    """Generated package repositories."""

    maybe(
        pypi_file,
        name = "poetry_lock_sdist_regex_2023.10.3",
        package_name = "regex",
        package_version = "2023.10.3",
        filename = "regex-2023.10.3.tar.gz",
        sha256 = "3fef4f844d2290ee0ba57addcec17eec9e3df73f10a2748485dfd6a3a188cc0f",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_sdist_zstandard_0.22.0",
        package_name = "zstandard",
        package_version = "0.22.0",
        filename = "zstandard-0.22.0.tar.gz",
        sha256 = "8226a33c542bcb54cd6bd0a366067b610b41713b64c9abec1bc4533d69f51e70",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_appnope_0.1.3_py2.py3_none_any",
        package_name = "appnope",
        package_version = "0.1.3",
        filename = "appnope-0.1.3-py2.py3-none-any.whl",
        sha256 = "265a455292d0bd8a72453494fa24df5a11eb18373a60c7c0430889f22548605e",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_asttokens_2.4.1_py2.py3_none_any",
        package_name = "asttokens",
        package_version = "2.4.1",
        filename = "asttokens-2.4.1-py2.py3-none-any.whl",
        sha256 = "051ed49c3dcae8913ea7cd08e46a606dba30b79993209636c4875bc1d637bc24",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_decorator_5.1.1_py3_none_any",
        package_name = "decorator",
        package_version = "5.1.1",
        filename = "decorator-5.1.1-py3-none-any.whl",
        sha256 = "b8c3f85900b9dc423225913c5aace94729fe1fa9763b38939a95226f02d37186",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_exceptiongroup_1.2.0_py3_none_any",
        package_name = "exceptiongroup",
        package_version = "1.2.0",
        filename = "exceptiongroup-1.2.0-py3-none-any.whl",
        sha256 = "4bfd3996ac73b41e9b9628b04e079f193850720ea5945fc96a08633c66912f14",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_executing_2.0.1_py2.py3_none_any",
        package_name = "executing",
        package_version = "2.0.1",
        filename = "executing-2.0.1-py2.py3-none-any.whl",
        sha256 = "eac49ca94516ccc753f9fb5ce82603156e590b27525a8bc32cce8ae302eb61bc",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_ipython_8.17.2_py3_none_any",
        package_name = "ipython",
        package_version = "8.17.2",
        filename = "ipython-8.17.2-py3-none-any.whl",
        sha256 = "1e4d1d666a023e3c93585ba0d8e962867f7a111af322efff6b9c58062b3e5444",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_jedi_0.19.1_py2.py3_none_any",
        package_name = "jedi",
        package_version = "0.19.1",
        filename = "jedi-0.19.1-py2.py3-none-any.whl",
        sha256 = "e983c654fe5c02867aef4cdfce5a2fbb4a50adc0af145f70504238f18ef5e7e0",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_matplotlib_inline_0.1.6_py3_none_any",
        package_name = "matplotlib-inline",
        package_version = "0.1.6",
        filename = "matplotlib_inline-0.1.6-py3-none-any.whl",
        sha256 = "f1f41aab5328aa5aaea9b16d083b128102f8712542f819fe7e6a420ff581b311",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_parso_0.8.3_py2.py3_none_any",
        package_name = "parso",
        package_version = "0.8.3",
        filename = "parso-0.8.3-py2.py3-none-any.whl",
        sha256 = "c001d4636cd3aecdaf33cbb40aebb59b094be2a74c556778ef5576c175e19e75",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_pexpect_4.9.0_py2.py3_none_any",
        package_name = "pexpect",
        package_version = "4.9.0",
        filename = "pexpect-4.9.0-py2.py3-none-any.whl",
        sha256 = "7236d1e080e4936be2dc3e326cec0af72acf9212a7e1d060210e70a47e253523",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_prompt_toolkit_3.0.41_py3_none_any",
        package_name = "prompt-toolkit",
        package_version = "3.0.41",
        filename = "prompt_toolkit-3.0.41-py3-none-any.whl",
        sha256 = "f36fe301fafb7470e86aaf90f036eef600a3210be4decf461a5b1ca8403d3cb2",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_ptyprocess_0.7.0_py2.py3_none_any",
        package_name = "ptyprocess",
        package_version = "0.7.0",
        filename = "ptyprocess-0.7.0-py2.py3-none-any.whl",
        sha256 = "4b41f3967fce3af57cc7e94b888626c18bf37a083e3651ca8feeb66d492fef35",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_pure_eval_0.2.2_py3_none_any",
        package_name = "pure-eval",
        package_version = "0.2.2",
        filename = "pure_eval-0.2.2-py3-none-any.whl",
        sha256 = "01eaab343580944bc56080ebe0a674b39ec44a945e6d09ba7db3cb8cec289350",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_pygments_2.17.2_py3_none_any",
        package_name = "pygments",
        package_version = "2.17.2",
        filename = "pygments-2.17.2-py3-none-any.whl",
        sha256 = "b27c2826c47d0f3219f29554824c30c5e8945175d888647acd804ddd04af846c",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_setuptools_68.2.2_py3_none_any",
        package_name = "setuptools",
        package_version = "68.2.2",
        filename = "setuptools-68.2.2-py3-none-any.whl",
        sha256 = "b454a35605876da60632df1a60f736524eb73cc47bbc9f3f1ef1b644de74fd2a",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_six_1.16.0_py2.py3_none_any",
        package_name = "six",
        package_version = "1.16.0",
        filename = "six-1.16.0-py2.py3-none-any.whl",
        sha256 = "8abb2f1d86890a2dfb989f9a77cfcfd3e47c2a354b01111771326f8aa26e0254",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_stack_data_0.6.3_py3_none_any",
        package_name = "stack-data",
        package_version = "0.6.3",
        filename = "stack_data-0.6.3-py3-none-any.whl",
        sha256 = "d5558e0c25a4cb0853cddad3d77da9891a08cb85dd9f9f91b9f8cd66e511e695",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_traitlets_5.14.0_py3_none_any",
        package_name = "traitlets",
        package_version = "5.14.0",
        filename = "traitlets-5.14.0-py3-none-any.whl",
        sha256 = "f14949d23829023013c47df20b4a76ccd1a85effb786dc060f34de7948361b33",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_wcwidth_0.2.12_py2.py3_none_any",
        package_name = "wcwidth",
        package_version = "0.2.12",
        filename = "wcwidth-0.2.12-py2.py3-none-any.whl",
        sha256 = "f26ec43d96c8cbfed76a5075dac87680124fa84e0855195a6184da9c187f133c",
    )

    maybe(
        pypi_file,
        name = "poetry_lock_wheel_wheel_0.41.3_py3_none_any",
        package_name = "wheel",
        package_version = "0.41.3",
        filename = "wheel-0.41.3-py3-none-any.whl",
        sha256 = "488609bc63a29322326e05560731bf7bfea8e48ad646e1f5e40d366607de0942",
    )
