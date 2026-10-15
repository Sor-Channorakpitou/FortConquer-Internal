.class public interface abstract Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$AREA_EVOLVE;
.super Ljava/lang/Object;
.source "UnitEvolveScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AREA_EVOLVE"
.end annotation


# static fields
.field public static final X:[I

.field public static final Y:I = 0x16a


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$AREA_EVOLVE;->X:[I

    .line 96
    return-void

    .line 95
    nop

    :array_0
    .array-data 4
        0x5f
        0xc2
        0x125
    .end array-data
.end method
