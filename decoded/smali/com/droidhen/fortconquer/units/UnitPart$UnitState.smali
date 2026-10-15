.class public final enum Lcom/droidhen/fortconquer/units/UnitPart$UnitState;
.super Ljava/lang/Enum;
.source "UnitPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/units/UnitPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/droidhen/fortconquer/units/UnitPart$UnitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

.field public static final enum UNIT_ATTACK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

.field public static final enum UNIT_CELE:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

.field public static final enum UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

.field public static final enum UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

.field public static final enum UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

.field public static final enum UNIT_WALK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    const-string v1, "UNIT_WALK"

    invoke-direct {v0, v1, v3}, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_WALK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    const-string v1, "UNIT_STAND_WALKING"

    invoke-direct {v0, v1, v4}, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    const-string v1, "UNIT_STAND_ATTACKING"

    invoke-direct {v0, v1, v5}, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    const-string v1, "UNIT_ATTACK"

    invoke-direct {v0, v1, v6}, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_ATTACK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    const-string v1, "UNIT_CELE"

    invoke-direct {v0, v1, v7}, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_CELE:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    const-string v1, "UNIT_DEAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_WALK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_ATTACK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_CELE:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->ENUM$VALUES:[Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/droidhen/fortconquer/units/UnitPart$UnitState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    return-object v0
.end method

.method public static values()[Lcom/droidhen/fortconquer/units/UnitPart$UnitState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->ENUM$VALUES:[Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    array-length v1, v0

    new-array v2, v1, [Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
