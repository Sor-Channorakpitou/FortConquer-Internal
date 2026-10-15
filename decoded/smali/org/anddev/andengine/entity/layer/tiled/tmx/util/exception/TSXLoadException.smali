.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TSXLoadException;
.super Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXException;
.source "TSXLoadException.java"


# static fields
.field private static final serialVersionUID:J = 0x23b92c4507bd77L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXException;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "pDetailMessage"    # Ljava/lang/String;
    .param p2, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method
