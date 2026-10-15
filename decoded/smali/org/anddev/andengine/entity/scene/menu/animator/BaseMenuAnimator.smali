.class public abstract Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;
.super Ljava/lang/Object;
.source "BaseMenuAnimator.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;


# static fields
.field protected static final DURATION:F = 1.0f

.field private static final HORIZONTALALIGN_DEFAULT:Lorg/anddev/andengine/util/HorizontalAlign;

.field private static final MENUITEMSPACING_DEFAULT:F = 1.0f


# instance fields
.field protected final mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

.field protected final mHorizontalAlign:Lorg/anddev/andengine/util/HorizontalAlign;

.field protected final mMenuItemSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/anddev/andengine/util/HorizontalAlign;->CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

    sput-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->HORIZONTALALIGN_DEFAULT:Lorg/anddev/andengine/util/HorizontalAlign;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(F)V

    .line 41
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "pMenuItemSpacing"    # F

    .prologue
    .line 48
    sget-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->HORIZONTALALIGN_DEFAULT:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;F)V

    .line 49
    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1
    .param p1, "pMenuItemSpacing"    # F
    .param p2, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 52
    sget-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->HORIZONTALALIGN_DEFAULT:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-direct {p0, v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;)V
    .locals 1
    .param p1, "pHorizontalAlign"    # Lorg/anddev/andengine/util/HorizontalAlign;

    .prologue
    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;F)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;F)V
    .locals 1
    .param p1, "pHorizontalAlign"    # Lorg/anddev/andengine/util/HorizontalAlign;
    .param p2, "pMenuItemSpacing"    # F

    .prologue
    .line 64
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pHorizontalAlign"    # Lorg/anddev/andengine/util/HorizontalAlign;
    .param p2, "pMenuItemSpacing"    # F
    .param p3, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mHorizontalAlign:Lorg/anddev/andengine/util/HorizontalAlign;

    .line 69
    iput p2, p0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mMenuItemSpacing:F

    .line 70
    iput-object p3, p0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1
    .param p1, "pHorizontalAlign"    # Lorg/anddev/andengine/util/HorizontalAlign;
    .param p2, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, p2}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1
    .param p1, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getMaximumWidth(Ljava/util/ArrayList;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "pMenuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;>;"
    const/4 v1, 0x1

    .line 79
    .local v1, "maximumWidth":F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 83
    return v1

    .line 80
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    .line 81
    .local v2, "menuItem":Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;
    invoke-interface {v2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 79
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected getOverallHeight(Ljava/util/ArrayList;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "pMenuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;>;"
    const/4 v2, 0x0

    .line 88
    .local v2, "overallHeight":F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iget v4, p0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mMenuItemSpacing:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 94
    return v2

    .line 89
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    .line 90
    .local v1, "menuItem":Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;
    invoke-interface {v1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 88
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
