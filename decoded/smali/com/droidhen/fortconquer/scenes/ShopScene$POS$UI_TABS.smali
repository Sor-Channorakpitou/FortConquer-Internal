.class public interface abstract Lcom/droidhen/fortconquer/scenes/ShopScene$POS$UI_TABS;
.super Ljava/lang/Object;
.source "ShopScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/ShopScene$POS;
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
    const/4 v1, 0x2

    .line 138
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/ShopScene$POS$UI_TABS;->X:[I

    .line 139
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/droidhen/fortconquer/scenes/ShopScene$POS$UI_TABS;->Y:[I

    return-void

    .line 138
    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data

    .line 139
    :array_1
    .array-data 4
        0x6b
        0xad
    .end array-data
.end method
