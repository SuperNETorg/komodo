package=rust
$(package)_version=1.16.0
$(package)_download_path=https://static.rust-lang.org/dist
$(package)_file_name=rust-$($(package)_version)-i686-unknown-linux-gnu.tar.gz
$(package)_sha256_hash=b5859161ebb182d3b75fa14a5741e5de87b088146fb0ef4a30f3b2439c6179c5

define $(package)_stage_cmds
  ./install.sh --destdir=$($(package)_staging_dir) --prefix=$(host_prefix)/native --disable-ldconfig
endef
