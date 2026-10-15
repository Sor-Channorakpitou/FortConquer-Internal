.class Lcom/droidhen/fortconquer/scenes/ArenaScene$11;
.super Ljava/lang/Object;
.source "ArenaScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/ArenaScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;)V
    .locals 2
    .param p1, "entity"    # Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setVisible(Z)V

    .line 259
    const/high16 v0, 0x44610000    # 900.0f

    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setPosition(FF)V

    .line 261
    return-void
.end method
