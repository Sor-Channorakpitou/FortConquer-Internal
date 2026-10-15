.class Lcom/droidhen/fortconquer/scenes/LogoScene$2;
.super Ljava/lang/Object;
.source "LogoScene.java"

# interfaces
.implements Lcom/droidhen/andplugin/modifier/TriggerCondition;


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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public satisfied()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->IsTexturesLoaded()Z

    move-result v0

    return v0
.end method
