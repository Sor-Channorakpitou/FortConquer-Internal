.class final Lcom/tapjoy/internal/go$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/go;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bt;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/tapjoy/internal/go;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/go;-><init>(Lcom/tapjoy/internal/bt;)V

    return-object v0
.end method
