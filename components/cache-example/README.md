
This example is worked from Radu Matei's excellent [blog post](https://radu-matei.com/blog/intro-wasm-components/).


`wit-bindgen` is installed from [here](https://github.com/bytecodealliance/wit-bindgen) via
``bash
$ cargo install --git https://github.com/bytecodealliance/wit-bindgen wit-bindgen-cli
```

Need to install wasm32-wasi target:
``bash
rustup target add wasm32-wasi
``