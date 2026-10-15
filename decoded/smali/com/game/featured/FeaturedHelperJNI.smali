.class public Lcom/game/featured/FeaturedHelperJNI;
.super Ljava/lang/Object;
.source "FeaturedHelperJNI.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openFeaturedDialogJni(I)V
    .locals 1
    .param p0, "dialogType"    # I

    .prologue
    .line 6
    invoke-static {}, Lcom/game/featured/FeaturedHelper;->getInstance()Lcom/game/featured/FeaturedHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/game/featured/FeaturedHelper;->showFeaturedDialogAtUIThread(I)V

    .line 7
    return-void
.end method
