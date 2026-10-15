.class Lcom/moreexchange/model/Icon$2;
.super Lcom/loopj/android/http/BinaryHttpResponseHandler;
.source "Icon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moreexchange/model/Icon;->renderBitmap(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moreexchange/model/Icon;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/moreexchange/model/Icon;Landroid/widget/ImageView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moreexchange/model/Icon$2;->this$0:Lcom/moreexchange/model/Icon;

    iput-object p2, p0, Lcom/moreexchange/model/Icon$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/moreexchange/model/Icon$2;->val$handler:Landroid/os/Handler;

    .line 95
    invoke-direct {p0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/moreexchange/model/Icon$2;->this$0:Lcom/moreexchange/model/Icon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moreexchange/model/Icon;->access$0(Lcom/moreexchange/model/Icon;Z)V

    .line 122
    return-void
.end method

.method public onSuccess([B)V
    .locals 5
    .param p1, "fileData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 99
    iget-object v2, p0, Lcom/moreexchange/model/Icon$2;->this$0:Lcom/moreexchange/model/Icon;

    invoke-static {v2, v4}, Lcom/moreexchange/model/Icon;->access$0(Lcom/moreexchange/model/Icon;Z)V

    .line 117
    :goto_0
    return-void

    .line 103
    :cond_0
    array-length v2, p1

    invoke-static {p1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 106
    iget-object v2, p0, Lcom/moreexchange/model/Icon$2;->this$0:Lcom/moreexchange/model/Icon;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/moreexchange/model/Icon;->access$1(Lcom/moreexchange/model/Icon;Ljava/lang/ref/SoftReference;)V

    .line 107
    iget-object v2, p0, Lcom/moreexchange/model/Icon$2;->this$0:Lcom/moreexchange/model/Icon;

    invoke-static {v2, v0}, Lcom/moreexchange/model/Icon;->access$2(Lcom/moreexchange/model/Icon;Landroid/graphics/Bitmap;)Z

    .line 109
    iget-object v2, p0, Lcom/moreexchange/model/Icon$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/moreexchange/model/Icon$2;->this$0:Lcom/moreexchange/model/Icon;

    iget-object v2, v2, Lcom/moreexchange/model/Icon;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/moreexchange/model/Icon$2;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/moreexchange/model/Icon$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/moreexchange/model/Icon$2;->this$0:Lcom/moreexchange/model/Icon;

    invoke-static {v2, v4}, Lcom/moreexchange/model/Icon;->access$0(Lcom/moreexchange/model/Icon;Z)V

    goto :goto_0
.end method
