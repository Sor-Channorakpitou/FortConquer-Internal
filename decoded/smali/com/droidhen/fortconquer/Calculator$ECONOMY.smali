.class public interface abstract Lcom/droidhen/fortconquer/Calculator$ECONOMY;
.super Ljava/lang/Object;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ECONOMY"
.end annotation


# static fields
.field public static final CATAPULT_BASE:I = 0x3e8

.field public static final CATAPULT_PER:I = 0x5dc

.field public static final FORT_BASE:I = 0x3e8

.field public static final FORT_PER:I = 0xc8

.field public static final MINERAL_BASE:I = 0x708

.field public static final MINERAL_LV_CRYSTAL:I = 0xa

.field public static final MINERAL_LV_INCR:I = 0x4

.field public static final MINERAL_LV_MAX:I = 0xa0

.field public static final MINERAL_PER:I = 0x2bc

.field public static final UNLOCK_PACK:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/droidhen/fortconquer/Calculator$ECONOMY;->UNLOCK_PACK:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d0
        0x4e20
        0x186a0
    .end array-data
.end method
