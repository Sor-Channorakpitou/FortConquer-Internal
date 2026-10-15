.class public final Lcom/tapjoy/internal/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dm$b;,
        Lcom/tapjoy/internal/dm$a;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 388
    sput-object v0, Lcom/tapjoy/internal/dm;->a:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/dm;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a(J)I
    .locals 2

    .prologue
    .line 237
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static a(Lcom/tapjoy/internal/dm$a;)I
    .locals 1

    .prologue
    .line 257
    invoke-interface {p0}, Lcom/tapjoy/internal/dm$a;->a()I

    move-result v0

    return v0
.end method

.method public static a(Z)I
    .locals 1

    .prologue
    .line 246
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method
