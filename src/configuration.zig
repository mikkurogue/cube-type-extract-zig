const std = @import("std");

pub const Prefix = struct {
    name: []const u8,
    prefix: []const u8,
};

pub const Configuration = struct {
    cube_url: []const u8,
    output: []const u8,
    file_name: []const u8,
    prefixes: []Prefix, // TODO: check if this is correct slice syntax - slice is immutable

    allocator: std.mem.Allocator,

    pub fn init() !void {
        // FIXME: Read the config json and parse it to props
    }

    pub fn deinit() void {}

    pub fn validate() bool {}

    pub fn read() !Configuration {}
};
