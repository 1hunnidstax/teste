.class Lcom/inmobi/ads/InMobiNativeStrand$1;
.super Ljava/lang/Object;
.source "InMobiNativeStrand.java"

# interfaces
.implements Lcom/inmobi/ads/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiNativeStrand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiNativeStrand;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiNativeStrand;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNativeStrand$1;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    # getter for: Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/ads/InMobiNativeStrand;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad markup successfully loaded in container"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand$1;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    # getter for: Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNativeStrand;->access$000(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNativeStrand$a;->sendEmptyMessage(I)Z

    .line 91
    return-void
.end method

.method public a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand$1;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    # getter for: Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNativeStrand;->access$000(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNativeStrand$a;->sendEmptyMessage(I)Z

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 80
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 81
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand$1;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    # getter for: Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiNativeStrand;->access$000(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiNativeStrand$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
