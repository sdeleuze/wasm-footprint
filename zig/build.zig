const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();
    const lib = b.addSharedLibrary("add", "src/main.zig", b.version(0,0,0));
    lib.setTarget(.{.cpu_arch = .wasm32, .os_tag = .freestanding});
    lib.setBuildMode(mode);
    lib.install();
}
