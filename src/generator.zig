const std = @import("std");
const Configration = @import("configuration.zig").Configuration;
const Prefix = @import("configuration.zig").Prefix;

const Meta = struct {
    extractable: bool,
};

const FieldSet = struct {
    name: []const u8,
    meta: ?Meta, // Field can be optional as not all fields have meta tag,
};

const Cube = struct {
    name: []const u8,
    dimensions: []FieldSet,
    measures: []FieldSet,
};

const Metadata = struct { cubes: []Cube };

pub const Generator = struct {
    cube_count: usize,
    metadata: Metadata,

    /// fetch the metadata from cube
    pub fn init() !void {}

    pub fn generate() !void {}
};

fn writeToFile() !void {}

fn processCube() !void {}

fn extractToUnion() []const u8 {}

fn fetchMetadata() !?Metadata {}

fn extractName() ![]const u8 {}

fn joinUnionFields() ![]const u8 {}
