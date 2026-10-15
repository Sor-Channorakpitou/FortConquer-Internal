.class Lcom/droidhen/fortconquer/scenes/LogoScene$9;
.super Ljava/lang/Object;
.source "LogoScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/LogoScene;->createBGAndSprites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/LogoScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->startInitThread()V

    .line 226
    return-void
.end method
