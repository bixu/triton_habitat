pkg_name="triton"
pkg_origin="bixu"
pkg_version="5.4.0"
pkg_maintainer="Blake Irvin <blakeirvin@me.com>"
pkg_license=('MPL-2.0')
pkg_description="triton is a CLI tool for working with the CloudAPI for \
Joyent's Triton Public Cloud and Private Cloud"
pkg_upstream_url="https://github.com/joyent/node-triton"
pkg_build_deps=()
pkg_deps=(
  core/coreutils
  core/node
)
pkg_bin_dirs=(bin)

do_prepare() {
  npm config set progress false
  npm config set prefix "$pkg_prefix"
}

do_build() {
  return 0
}

do_install() {
  npm install -g "$pkg_name@$pkg_version"
  fix_interpreter "$pkg_prefix/bin/$pkg_name" core/coreutils bin/env
}

do_strip() {
  return 0
}
