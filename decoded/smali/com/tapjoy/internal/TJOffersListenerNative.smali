.class public Lcom/tapjoy/internal/TJOffersListenerNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJOffersListener;


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeHandle"    # J

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 15
    :cond_0
    iput-wide p1, p0, Lcom/tapjoy/internal/TJOffersListenerNative;->a:J

    .line 16
    return-void
.end method

.method static create(J)Ljava/lang/Object;
    .locals 2
    .param p0, "nativeHandle"    # J
    .annotation build Lcom/tapjoy/internal/Keep;
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/tapjoy/internal/TJOffersListenerNative;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/TJOffersListenerNative;-><init>(J)V

    return-object v0
.end method

.method private static native onOffersResponseFailureNative(JLjava/lang/String;)V
.end method

.method private static native onOffersResponseNative(J)V
.end method


# virtual methods
.method public onOffersResponse()V
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/tapjoy/internal/TJOffersListenerNative;->a:J

    invoke-static {v0, v1}, Lcom/tapjoy/internal/TJOffersListenerNative;->onOffersResponseNative(J)V

    .line 21
    return-void
.end method

.method public onOffersResponseFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/tapjoy/internal/TJOffersListenerNative;->a:J

    invoke-static {v0, v1, p1}, Lcom/tapjoy/internal/TJOffersListenerNative;->onOffersResponseFailureNative(JLjava/lang/String;)V

    .line 26
    return-void
.end method
