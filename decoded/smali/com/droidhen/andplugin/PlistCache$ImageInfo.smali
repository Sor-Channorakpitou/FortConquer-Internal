.class public Lcom/droidhen/andplugin/PlistCache$ImageInfo;
.super Ljava/lang/Object;
.source "PlistCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/andplugin/PlistCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field public fileFullPath:Ljava/lang/String;

.field public itemCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public totalHeight:I

.field public totalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->itemCache:Ljava/util/HashMap;

    .line 165
    return-void
.end method
