.class public Lorg/anddev/andengine/entity/text/ChangeableText;
.super Lorg/anddev/andengine/entity/text/Text;
.source "ChangeableText.java"


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "..."

.field private static final ELLIPSIS_CHARACTER_COUNT:I


# instance fields
.field private mCharacterCountCurrentText:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "..."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/anddev/andengine/entity/text/ChangeableText;->ELLIPSIS_CHARACTER_COUNT:I

    .line 18
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V
    .locals 6
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pFont"    # Lorg/anddev/andengine/opengl/font/Font;
    .param p4, "pText"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {p4, v1}, Lorg/anddev/andengine/util/StringUtils;->countOccurrences(Ljava/lang/String;C)I

    move-result v1

    sub-int v5, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V
    .locals 7
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pFont"    # Lorg/anddev/andengine/opengl/font/Font;
    .param p4, "pText"    # Ljava/lang/String;
    .param p5, "pCharactersMaximum"    # I

    .prologue
    .line 41
    sget-object v5, Lorg/anddev/andengine/util/HorizontalAlign;->LEFT:Lorg/anddev/andengine/util/HorizontalAlign;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;I)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pFont"    # Lorg/anddev/andengine/opengl/font/Font;
    .param p4, "pText"    # Ljava/lang/String;
    .param p5, "pHorizontalAlign"    # Lorg/anddev/andengine/util/HorizontalAlign;
    .param p6, "pCharactersMaximum"    # I

    .prologue
    .line 45
    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;I)V

    .line 46
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {p4, v1}, Lorg/anddev/andengine/util/StringUtils;->countOccurrences(Ljava/lang/String;C)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharacterCountCurrentText:I

    .line 47
    return-void
.end method


# virtual methods
.method protected drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 83
    const/4 v0, 0x4

    const/4 v1, 0x0

    iget v2, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharacterCountCurrentText:I

    mul-int/lit8 v2, v2, 0x6

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 84
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "pText"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;Z)V

    .line 55
    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pText"    # Ljava/lang/String;
    .param p2, "pAllowEllipsis"    # Z

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lorg/anddev/andengine/util/StringUtils;->countOccurrences(Ljava/lang/String;C)I

    move-result v2

    sub-int v0, v1, v2

    .line 64
    .local v0, "textCharacterCount":I
    iget v1, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharactersMaximum:I

    if-le v0, v1, :cond_1

    .line 65
    if-eqz p2, :cond_0

    iget v1, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharactersMaximum:I

    sget v2, Lorg/anddev/andengine/entity/text/ChangeableText;->ELLIPSIS_CHARACTER_COUNT:I

    if-le v1, v2, :cond_0

    .line 66
    iget v1, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharactersMaximum:I

    sget v2, Lorg/anddev/andengine/entity/text/ChangeableText;->ELLIPSIS_CHARACTER_COUNT:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->updateText(Ljava/lang/String;)V

    .line 70
    :goto_0
    iget v1, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharactersMaximum:I

    iput v1, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharacterCountCurrentText:I

    .line 75
    :goto_1
    return-void

    .line 68
    :cond_0
    iget v1, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharactersMaximum:I

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->updateText(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/text/ChangeableText;->updateText(Ljava/lang/String;)V

    .line 73
    iput v0, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharacterCountCurrentText:I

    goto :goto_1
.end method
