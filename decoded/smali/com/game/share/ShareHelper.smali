.class public Lcom/game/share/ShareHelper;
.super Ljava/lang/Object;
.source "ShareHelper.java"


# static fields
.field private static _activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/game/share/ShareHelper;->_activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sput-object p0, Lcom/game/share/ShareHelper;->_activity:Landroid/app/Activity;

    .line 13
    return-void
.end method

.method public static share()V
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/game/share/ShareHelper;->_activity:Landroid/app/Activity;

    sget-object v1, Lcom/game/share/ShareHelper;->_activity:Landroid/app/Activity;

    const-string v2, "share.jpg"

    invoke-static {v1, v2}, Lcom/game/share/ShareFileUtil;->getShareFileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/share/ShareUtil;->share(Landroid/app/Activity;Ljava/lang/String;)V

    .line 17
    return-void
.end method
