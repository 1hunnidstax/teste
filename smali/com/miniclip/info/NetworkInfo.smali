.class public Lcom/miniclip/info/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 13
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 14
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 22
    :cond_0
    :goto_0
    return v3

    .line 17
    :cond_1
    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 18
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 19
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    goto :goto_0
.end method
