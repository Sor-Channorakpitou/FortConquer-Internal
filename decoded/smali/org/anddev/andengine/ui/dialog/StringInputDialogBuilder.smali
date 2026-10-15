.class public Lorg/anddev/andengine/ui/dialog/StringInputDialogBuilder;
.super Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;
.source "StringInputDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/String;Lorg/anddev/andengine/util/Callback;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTitleResID"    # I
    .param p3, "pMessageResID"    # I
    .param p4, "pErrorResID"    # I
    .param p5, "pIconResID"    # I
    .param p6, "pDefaultText"    # Ljava/lang/String;
    .param p8, "pOnCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/String;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p7, "pSuccessCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p8}, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;-><init>(Landroid/content/Context;IIIILjava/lang/String;Lorg/anddev/andengine/util/Callback;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIILorg/anddev/andengine/util/Callback;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTitleResID"    # I
    .param p3, "pMessageResID"    # I
    .param p4, "pErrorResID"    # I
    .param p5, "pIconResID"    # I
    .param p7, "pOnCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p6, "pSuccessCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;-><init>(Landroid/content/Context;IIIILorg/anddev/andengine/util/Callback;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/ui/dialog/StringInputDialogBuilder;->generateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "pInput"    # Ljava/lang/String;

    .prologue
    .line 46
    return-object p1
.end method
