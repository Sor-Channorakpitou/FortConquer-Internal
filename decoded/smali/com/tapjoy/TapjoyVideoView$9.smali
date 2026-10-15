.class final Lcom/tapjoy/TapjoyVideoView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideoView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$9;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 861
    const-string v0, "VideoView"

    const-string v1, "dialog onCancel"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 863
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$9;->a:Lcom/tapjoy/TapjoyVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->a(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 864
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$9;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->o(Lcom/tapjoy/TapjoyVideoView;)V

    .line 865
    return-void
.end method
