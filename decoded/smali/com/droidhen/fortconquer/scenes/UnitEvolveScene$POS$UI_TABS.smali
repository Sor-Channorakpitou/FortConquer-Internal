.class public interface abstract Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$UI_TABS;
.super Ljava/lang/Object;
.source "UnitEvolveScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UI_TABS"
.end annotation


# static fields
.field public static final X:[I

.field public static final Y:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 100
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$UI_TABS;->X:[I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$UI_TABS;->Y:[I

    return-void

    .line 100
    :array_0
    .array-data 4
        0x4
        0x4
        0x4
    .end array-data

    .line 101
    :array_1
    .array-data 4
        0x6b
        0xad
        0xf0
    .end array-data
.end method
