.class public Lcom/droidhen/framework/billing/PurchaseManager;
.super Ljava/lang/Object;
.source "PurchaseManager.java"


# static fields
.field private static _singleInstance:Lcom/droidhen/framework/billing/PurchaseManager;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _base64EncodedPublicKey:Ljava/lang/String;

.field private _purchaseListener:Lcom/droidhen/framework/billing/ItemPurchaseListener;

.field private _purchaseRequestCode:I

.field private mGotInventoryListener:Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;

.field private mHelper:Lcom/droidhen/framework/billing/IabHelper;

.field private mPurchaseFinishedListener:Lcom/droidhen/framework/billing/IabHelper$OnIabPurchaseFinishedListener;

.field protected mPurchaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/droidhen/framework/billing/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private supportPurchase:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/droidhen/framework/billing/PurchaseManager;->_singleInstance:Lcom/droidhen/framework/billing/PurchaseManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->supportPurchase:Z

    .line 21
    iput-object v1, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_activity:Landroid/app/Activity;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mPurchaseMap:Ljava/util/Map;

    .line 23
    iput-object v1, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_purchaseListener:Lcom/droidhen/framework/billing/ItemPurchaseListener;

    .line 81
    new-instance v0, Lcom/droidhen/framework/billing/PurchaseManager$1;

    invoke-direct {v0, p0}, Lcom/droidhen/framework/billing/PurchaseManager$1;-><init>(Lcom/droidhen/framework/billing/PurchaseManager;)V

    iput-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mGotInventoryListener:Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;

    .line 96
    new-instance v0, Lcom/droidhen/framework/billing/PurchaseManager$2;

    invoke-direct {v0, p0}, Lcom/droidhen/framework/billing/PurchaseManager$2;-><init>(Lcom/droidhen/framework/billing/PurchaseManager;)V

    iput-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mPurchaseFinishedListener:Lcom/droidhen/framework/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/droidhen/framework/billing/PurchaseManager;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/droidhen/framework/billing/PurchaseManager;->queryInventoryFinished(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/droidhen/framework/billing/PurchaseManager;)Lcom/droidhen/framework/billing/ItemPurchaseListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_purchaseListener:Lcom/droidhen/framework/billing/ItemPurchaseListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/droidhen/framework/billing/PurchaseManager;Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/droidhen/framework/billing/PurchaseManager;->supportPurchase:Z

    return-void
.end method

.method static synthetic access$3(Lcom/droidhen/framework/billing/PurchaseManager;)Lcom/droidhen/framework/billing/IabHelper;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mHelper:Lcom/droidhen/framework/billing/IabHelper;

    return-object v0
.end method

.method static synthetic access$4(Lcom/droidhen/framework/billing/PurchaseManager;)Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mGotInventoryListener:Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/droidhen/framework/billing/PurchaseManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static instance()Lcom/droidhen/framework/billing/PurchaseManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/droidhen/framework/billing/PurchaseManager;->_singleInstance:Lcom/droidhen/framework/billing/PurchaseManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/droidhen/framework/billing/PurchaseManager;

    invoke-direct {v0}, Lcom/droidhen/framework/billing/PurchaseManager;-><init>()V

    sput-object v0, Lcom/droidhen/framework/billing/PurchaseManager;->_singleInstance:Lcom/droidhen/framework/billing/PurchaseManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/droidhen/framework/billing/PurchaseManager;->_singleInstance:Lcom/droidhen/framework/billing/PurchaseManager;

    return-object v0
.end method

.method private queryInventoryFinished(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 56
    return-void
.end method

.method private replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v1, "%lang%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 141
    .local v0, "locale":Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 142
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 144
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    return-object p1
.end method


# virtual methods
.method alertBillingNotSupport()V
    .locals 5

    .prologue
    .line 119
    iget-object v3, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_activity:Landroid/app/Activity;

    const v4, 0x7f05003c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/droidhen/framework/billing/PurchaseManager;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "helpUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 122
    .local v1, "helpUri":Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "bld":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f050039

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 124
    const v3, 0x7f05003a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 125
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 126
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    const v3, 0x7f05003b

    .line 128
    new-instance v4, Lcom/droidhen/framework/billing/PurchaseManager$5;

    invoke-direct {v4, p0, v1}, Lcom/droidhen/framework/billing/PurchaseManager$5;-><init>(Lcom/droidhen/framework/billing/PurchaseManager;Landroid/net/Uri;)V

    .line 127
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 135
    return-void
.end method

.method protected buyItemFinished(Lcom/droidhen/framework/billing/Purchase;)V
    .locals 2
    .param p1, "purchase"    # Lcom/droidhen/framework/billing/Purchase;

    .prologue
    .line 36
    new-instance v0, Lcom/droidhen/framework/billing/PurchaseManager$3;

    invoke-direct {v0, p0, p1}, Lcom/droidhen/framework/billing/PurchaseManager$3;-><init>(Lcom/droidhen/framework/billing/PurchaseManager;Lcom/droidhen/framework/billing/Purchase;)V

    .line 48
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method public buyItemInMainThread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    iget-boolean v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->supportPurchase:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mHelper:Lcom/droidhen/framework/billing/IabHelper;

    iget-object v1, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_activity:Landroid/app/Activity;

    iget v3, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_purchaseRequestCode:I

    .line 109
    iget-object v4, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mPurchaseFinishedListener:Lcom/droidhen/framework/billing/IabHelper$OnIabPurchaseFinishedListener;

    move-object v2, p1

    move-object v5, p2

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/droidhen/framework/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/droidhen/framework/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/framework/billing/PurchaseManager;->alertBillingNotSupport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected confirmPurchase(Lcom/droidhen/framework/billing/Purchase;)V
    .locals 1
    .param p1, "purchase"    # Lcom/droidhen/framework/billing/Purchase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mHelper:Lcom/droidhen/framework/billing/IabHelper;

    invoke-virtual {v0, p1}, Lcom/droidhen/framework/billing/IabHelper;->consumeAsync(Lcom/droidhen/framework/billing/Purchase;)V

    .line 53
    return-void
.end method

.method public initPurchase(Landroid/app/Activity;Ljava/lang/String;ILcom/droidhen/framework/billing/ItemPurchaseListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "base64EncodeKey"    # Ljava/lang/String;
    .param p3, "purchaseRequestCode"    # I
    .param p4, "purchaseListener"    # Lcom/droidhen/framework/billing/ItemPurchaseListener;

    .prologue
    .line 60
    iput-object p2, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_base64EncodedPublicKey:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_purchaseRequestCode:I

    .line 62
    iput-object p1, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_activity:Landroid/app/Activity;

    .line 63
    iput-object p4, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_purchaseListener:Lcom/droidhen/framework/billing/ItemPurchaseListener;

    .line 64
    invoke-static {p1}, Lcom/droidhen/framework/billing/DataProvider;->init(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/droidhen/framework/billing/IabHelper;

    iget-object v1, p0, Lcom/droidhen/framework/billing/PurchaseManager;->_base64EncodedPublicKey:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/droidhen/framework/billing/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mHelper:Lcom/droidhen/framework/billing/IabHelper;

    .line 67
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mHelper:Lcom/droidhen/framework/billing/IabHelper;

    new-instance v1, Lcom/droidhen/framework/billing/PurchaseManager$4;

    invoke-direct {v1, p0}, Lcom/droidhen/framework/billing/PurchaseManager$4;-><init>(Lcom/droidhen/framework/billing/PurchaseManager;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/framework/billing/IabHelper;->startSetup(Lcom/droidhen/framework/billing/IabHelper$OnIabSetupFinishedListener;)V

    .line 78
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mHelper:Lcom/droidhen/framework/billing/IabHelper;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager;->mHelper:Lcom/droidhen/framework/billing/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/droidhen/framework/billing/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
