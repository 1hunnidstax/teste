.class public final Lcom/vungle/publisher/uk;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/uq;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Landroid/net/ConnectivityManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ur;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/telephony/TelephonyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->b()Lcom/vungle/publisher/sc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/sc;->a(Lcom/vungle/publisher/uk;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/publisher/un;
    .locals 5

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/uk;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 40
    sparse-switch v1, :sswitch_data_0

    .line 49
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown connectivity type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :sswitch_0
    sget-object v0, Lcom/vungle/publisher/un;->b:Lcom/vungle/publisher/un;

    goto :goto_0

    .line 46
    :sswitch_1
    sget-object v0, Lcom/vungle/publisher/un;->a:Lcom/vungle/publisher/un;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    const-string v2, "VungleNetwork"

    const-string v3, "error getting connectivity type"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/uk;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    const-string v2, "VungleNetwork"

    const-string v3, "error getting network operator"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()Lcom/vungle/publisher/up;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/vungle/publisher/up;->e:Lcom/vungle/publisher/up;

    .line 94
    iget-object v1, p0, Lcom/vungle/publisher/uk;->a:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vungle/publisher/pj;->j:Lcom/vungle/publisher/pj;

    invoke-static {v1}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/vungle/publisher/uk;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/vungle/publisher/uk;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    sget-object v0, Lcom/vungle/publisher/up;->e:Lcom/vungle/publisher/up;

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    sget-object v0, Lcom/vungle/publisher/up;->c:Lcom/vungle/publisher/up;

    goto :goto_0

    .line 105
    :pswitch_1
    sget-object v0, Lcom/vungle/publisher/up;->b:Lcom/vungle/publisher/up;

    goto :goto_0

    .line 110
    :pswitch_2
    sget-object v0, Lcom/vungle/publisher/up;->a:Lcom/vungle/publisher/up;

    goto :goto_0

    .line 117
    :cond_1
    sget-object v0, Lcom/vungle/publisher/up;->d:Lcom/vungle/publisher/up;

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 3

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/uk;->a:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vungle/publisher/pj;->d:Lcom/vungle/publisher/pj;

    invoke-static {v0}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/vungle/publisher/uk;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 133
    :goto_0
    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v1, "VungleNetwork"

    const-string v2, "error getting network details"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/vungle/publisher/uo;
    .locals 3

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/uk;->a:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/uk;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 140
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 142
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 143
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 144
    :cond_0
    sget-object v0, Lcom/vungle/publisher/uo;->a:Lcom/vungle/publisher/uo;

    .line 205
    :goto_1
    return-object v0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :cond_2
    if-nez v1, :cond_4

    .line 147
    sget-object v1, Lcom/vungle/publisher/pj;->c:Lcom/vungle/publisher/pj;

    invoke-static {v1}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    .line 149
    sget-object v0, Lcom/vungle/publisher/uo;->l:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 153
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 198
    sget-object v0, Lcom/vungle/publisher/uo;->q:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 156
    :pswitch_0
    sget-object v0, Lcom/vungle/publisher/uo;->b:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 159
    :pswitch_1
    sget-object v0, Lcom/vungle/publisher/uo;->c:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 162
    :pswitch_2
    sget-object v0, Lcom/vungle/publisher/uo;->d:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 165
    :pswitch_3
    sget-object v0, Lcom/vungle/publisher/uo;->e:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 168
    :pswitch_4
    sget-object v0, Lcom/vungle/publisher/uo;->f:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 171
    :pswitch_5
    sget-object v0, Lcom/vungle/publisher/uo;->g:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 174
    :pswitch_6
    sget-object v0, Lcom/vungle/publisher/uo;->h:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 177
    :pswitch_7
    sget-object v0, Lcom/vungle/publisher/uo;->i:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 180
    :pswitch_8
    sget-object v0, Lcom/vungle/publisher/uo;->j:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 183
    :pswitch_9
    sget-object v0, Lcom/vungle/publisher/uo;->k:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 186
    :pswitch_a
    sget-object v0, Lcom/vungle/publisher/uo;->m:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 189
    :pswitch_b
    sget-object v0, Lcom/vungle/publisher/uo;->n:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 192
    :pswitch_c
    sget-object v0, Lcom/vungle/publisher/uo;->o:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 195
    :pswitch_d
    sget-object v0, Lcom/vungle/publisher/uo;->p:Lcom/vungle/publisher/uo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const-string v1, "VungleNetwork"

    const-string v2, "error getting connectivity details"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    :cond_4
    sget-object v0, Lcom/vungle/publisher/uo;->q:Lcom/vungle/publisher/uo;

    goto :goto_1

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
