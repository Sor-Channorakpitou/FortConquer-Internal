.class public interface abstract Lcom/droidhen/fortconquer/EffectUtil$INSTANCES$COND;
.super Ljava/lang/Object;
.source "EffectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/EffectUtil$INSTANCES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "COND"
.end annotation


# static fields
.field public static final NEVER:Lcom/droidhen/andplugin/modifier/TriggerCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/droidhen/fortconquer/EffectUtil$INSTANCES$COND$1;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/EffectUtil$INSTANCES$COND$1;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/EffectUtil$INSTANCES$COND;->NEVER:Lcom/droidhen/andplugin/modifier/TriggerCondition;

    .line 188
    return-void
.end method
