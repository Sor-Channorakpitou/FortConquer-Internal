.class Lcom/droidhen/framework/CrashDumpUploader$CrashDumpUploaderHolder;
.super Ljava/lang/Object;
.source "CrashDumpUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/framework/CrashDumpUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrashDumpUploaderHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/droidhen/framework/CrashDumpUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/droidhen/framework/CrashDumpUploader;

    invoke-direct {v0}, Lcom/droidhen/framework/CrashDumpUploader;-><init>()V

    sput-object v0, Lcom/droidhen/framework/CrashDumpUploader$CrashDumpUploaderHolder;->INSTANCE:Lcom/droidhen/framework/CrashDumpUploader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
