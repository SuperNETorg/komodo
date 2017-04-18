package=libcurl
$(package)_version=7.52.1
$(package)_download_path=https://curl.haxx.se/download
$(package)_file_name=curl-$($(package)_version).tar.gz
$(package)_sha256_hash=a8984e8b20880b621f61a62d95ff3c0763a3152093a9f9ce4287cfd614add6ae
$(package)_config_opts=--disable-shared --enable-static --prefix=$(host_prefix)
$(package)_cflags=-mmacosx-version-min=10.9
$(package)_conf_tool=./configure

define $(package)_set_vars
    $(package)_build_env=MACOSX_DEPLOYMENT_TARGET="10.9"
endef

define $(package)_config_cmds
  $($(package)_conf_tool) $($(package)_config_opts)
endef

define $(package)_build_cmds
  $(MAKE) CPPFLAGS='-fPIC' CFLAGS='-mmacosx-version-min=10.9'
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef
