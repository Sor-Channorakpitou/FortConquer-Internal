.class public Lorg/anddev/andengine/entity/scene/menu/item/TextMenuItem;
.super Lorg/anddev/andengine/entity/text/Text;
.source "TextMenuItem.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;


# instance fields
.field private final mID:I


# direct methods
.method public constructor <init>(ILorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V
    .locals 1
    .param p1, "pID"    # I
    .param p2, "pFont"    # Lorg/anddev/andengine/opengl/font/Font;
    .param p3, "pText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0, v0, p2, p3}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    .line 30
    iput p1, p0, Lorg/anddev/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 31
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    return v0
.end method

.method public onSelected()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onUnselected()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
