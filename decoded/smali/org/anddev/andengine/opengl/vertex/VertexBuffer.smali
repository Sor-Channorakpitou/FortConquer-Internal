.class public abstract Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
.super Lorg/anddev/andengine/opengl/buffer/BufferObject;
.source "VertexBuffer.java"


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "pCapacity"    # I
    .param p2, "pDrawType"    # I
    .param p3, "pManaged"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/opengl/buffer/BufferObject;-><init>(IIZ)V

    .line 27
    return-void
.end method
