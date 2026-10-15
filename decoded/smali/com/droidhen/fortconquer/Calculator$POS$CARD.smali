.class public interface abstract Lcom/droidhen/fortconquer/Calculator$POS$CARD;
.super Ljava/lang/Object;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/Calculator$POS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CARD"
.end annotation


# static fields
.field public static final X_SHIFT:[I

.field public static final Y_SHIFT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0x8

    const/16 v5, 0x28

    const/16 v4, 0x14

    const/16 v3, -0x28

    .line 56
    const/16 v1, 0x18

    new-array v0, v1, [I

    const/4 v1, 0x3

    .line 57
    const/4 v2, -0x5

    aput v2, v0, v1

    .line 58
    aput v3, v0, v6

    const/16 v1, 0x9

    const/16 v2, -0x24

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, -0x25

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x22

    aput v2, v0, v1

    const/16 v1, -0x24

    aput v1, v0, v7

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    const/16 v2, -0x30

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 59
    aput v3, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    aput v3, v0, v1

    const/16 v1, 0x15

    aput v3, v0, v1

    const/16 v1, 0x16

    aput v3, v0, v1

    const/16 v1, 0x17

    aput v3, v0, v1

    .line 56
    sput-object v0, Lcom/droidhen/fortconquer/Calculator$POS$CARD;->X_SHIFT:[I

    .line 61
    const/16 v1, 0x18

    new-array v0, v1, [I

    const/4 v1, 0x0

    .line 62
    aput v7, v0, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x12

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xf

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x10

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 63
    aput v6, v0, v6

    const/16 v1, 0xb

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, -0xc

    aput v1, v0, v7

    const/16 v1, 0xe

    const/4 v2, -0x3

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 64
    aput v5, v0, v1

    const/16 v1, 0x11

    aput v5, v0, v1

    const/16 v1, 0x12

    aput v5, v0, v1

    const/16 v1, 0x13

    aput v5, v0, v1

    const/16 v1, 0x14

    aput v5, v0, v1

    const/16 v1, 0x15

    aput v5, v0, v1

    const/16 v1, 0x16

    aput v5, v0, v1

    const/16 v1, 0x17

    aput v5, v0, v1

    .line 61
    sput-object v0, Lcom/droidhen/fortconquer/Calculator$POS$CARD;->Y_SHIFT:[I

    .line 65
    return-void
.end method
