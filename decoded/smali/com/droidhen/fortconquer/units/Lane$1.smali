.class Lcom/droidhen/fortconquer/units/Lane$1;
.super Ljava/lang/Object;
.source "Lane.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/units/Lane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/units/Lane;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/units/Lane;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Lane$1;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane$1;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-nez v1, :cond_1

    .line 83
    :cond_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane$1;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->detachSelf()Z

    .line 81
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane$1;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/Lane;->mFireballExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->detachSelf()Z

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
