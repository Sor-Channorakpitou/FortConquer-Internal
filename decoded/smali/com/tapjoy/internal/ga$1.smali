.class final Lcom/tapjoy/internal/ga$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ga;->a(Lcom/tapjoy/internal/fw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fw;

.field final synthetic b:Lcom/tapjoy/internal/ga;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/fw;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tapjoy/internal/ga$1;->b:Lcom/tapjoy/internal/ga;

    iput-object p2, p0, Lcom/tapjoy/internal/ga$1;->a:Lcom/tapjoy/internal/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tapjoy/internal/ga$1;->a:Lcom/tapjoy/internal/fw;

    iget-object v1, p0, Lcom/tapjoy/internal/ga$1;->b:Lcom/tapjoy/internal/ga;

    iget-object v1, v1, Lcom/tapjoy/internal/ga;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fw;->d(Ljava/lang/String;)V

    .line 98
    return-void
.end method
