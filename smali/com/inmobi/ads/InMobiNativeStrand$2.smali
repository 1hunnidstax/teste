.class Lcom/inmobi/ads/InMobiNativeStrand$2;
.super Ljava/lang/Object;
.source "InMobiNativeStrand.java"

# interfaces
.implements Lcom/inmobi/ads/ai$b;


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
    .line 94
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 106
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 107
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    # getter for: Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiNativeStrand;->access$000(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiNativeStrand$a;->sendMessage(Landroid/os/Message;)Z

    .line 108
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 113
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 114
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    # getter for: Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiNativeStrand;->access$000(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiNativeStrand$a;->sendMessage(Landroid/os/Message;)Z

    .line 115
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
