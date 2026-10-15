.class Lorg/anddev/andengine/util/ActivityUtils$1$1;
.super Ljava/lang/Object;
.source "ActivityUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/anddev/andengine/util/ActivityUtils$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/anddev/andengine/util/ActivityUtils$1;

.field private final synthetic val$pExceptionCallback:Lorg/anddev/andengine/util/Callback;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/util/ActivityUtils$1;Lorg/anddev/andengine/util/Callback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/anddev/andengine/util/ActivityUtils$1$1;->this$1:Lorg/anddev/andengine/util/ActivityUtils$1;

    iput-object p2, p0, Lorg/anddev/andengine/util/ActivityUtils$1$1;->val$pExceptionCallback:Lorg/anddev/andengine/util/Callback;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "pDialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1$1;->val$pExceptionCallback:Lorg/anddev/andengine/util/Callback;

    new-instance v1, Lorg/anddev/andengine/ui/activity/BaseActivity$CancelledException;

    invoke-direct {v1}, Lorg/anddev/andengine/ui/activity/BaseActivity$CancelledException;-><init>()V

    invoke-interface {v0, v1}, Lorg/anddev/andengine/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 113
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 114
    return-void
.end method
