.class public final Lcom/tapjoy/internal/gu$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/tapjoy/internal/gc;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/gc;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/tapjoy/internal/gu$a;->a:Lcom/tapjoy/internal/gc;

    .line 106
    iput-object p2, p0, Lcom/tapjoy/internal/gu$a;->b:Ljava/util/List;

    .line 107
    return-void
.end method
