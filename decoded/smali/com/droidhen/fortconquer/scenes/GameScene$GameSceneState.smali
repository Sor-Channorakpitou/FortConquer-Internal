.class public final enum Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;
.super Ljava/lang/Enum;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameSceneState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

.field public static final enum GAME_FAIL:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

.field public static final enum GAME_PASS:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

.field public static final enum GAME_PAUSE:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

.field public static final enum GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    const-string v1, "GAME_RUNNING"

    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    const-string v1, "GAME_PAUSE"

    invoke-direct {v0, v1, v3}, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PAUSE:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    const-string v1, "GAME_PASS"

    invoke-direct {v0, v1, v4}, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PASS:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    const-string v1, "GAME_FAIL"

    invoke-direct {v0, v1, v5}, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_FAIL:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PAUSE:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PASS:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_FAIL:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->ENUM$VALUES:[Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    return-object v0
.end method

.method public static values()[Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->ENUM$VALUES:[Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    array-length v1, v0

    new-array v2, v1, [Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
