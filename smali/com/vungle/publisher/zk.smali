.class public final Lcom/vungle/publisher/zk;
.super Lcom/vungle/publisher/wq;
.source "vungle"


# instance fields
.field a:Lcom/vungle/publisher/adj$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/pv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/zb;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vungle/publisher/wq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vungle/publisher/zk;->a:Lcom/vungle/publisher/adj$a;

    .line 41
    iget-object v1, p2, Lcom/vungle/publisher/vy;->a:Ljava/net/HttpURLConnection;

    .line 40
    invoke-virtual {p0, v1}, Lcom/vungle/publisher/zk;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/adj$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/adj;

    .line 42
    iget-object v2, v0, Lcom/vungle/publisher/adj;->b:Ljava/lang/Integer;

    .line 43
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/vungle/publisher/zk;->j:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/zb;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/zb;->a(J)V

    .line 46
    :cond_0
    iget-object v1, v0, Lcom/vungle/publisher/adj;->d:Lcom/vungle/publisher/adj$b;

    .line 47
    if-eqz v1, :cond_1

    .line 48
    sget-object v2, Lcom/vungle/publisher/zk$1;->a:[I

    invoke-virtual {v1}, Lcom/vungle/publisher/adj$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 56
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unhandled streaming connectivity type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/vungle/publisher/zk;->b:Lcom/vungle/publisher/pv;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/vungle/publisher/adj;->a:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "VungleConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_4

    const-string v1, "enabling"

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ad streaming"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v2, Lcom/vungle/publisher/pv;->b:Z

    .line 60
    iget-object v1, p0, Lcom/vungle/publisher/zk;->b:Lcom/vungle/publisher/pv;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/vungle/publisher/adj;->e:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "VungleConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setting exception reporting enabled: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/vungle/publisher/pv;->j:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v1, v1, Lcom/vungle/publisher/pv;->e:Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    iget-object v1, v0, Lcom/vungle/publisher/adj;->c:Ljava/lang/Integer;

    .line 62
    if-nez v1, :cond_5

    .line 63
    const-string v1, "VungleNetwork"

    const-string v2, "null request streaming ad timeout millis"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_2
    iget-object v1, v0, Lcom/vungle/publisher/adj;->f:Ljava/lang/Long;

    .line 70
    iget-object v0, v0, Lcom/vungle/publisher/adj;->g:Ljava/lang/Long;

    .line 71
    if-eqz v0, :cond_2

    .line 72
    iget-object v2, p0, Lcom/vungle/publisher/zk;->b:Lcom/vungle/publisher/pv;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "VungleConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "setting app fingerprint frequency to "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v4, v2, Lcom/vungle/publisher/pv;->g:J

    .line 74
    :cond_2
    if-eqz v1, :cond_3

    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/zk;->b:Lcom/vungle/publisher/pv;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vungle/publisher/pv;->a(J)V

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/vungle/publisher/zk;->i:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/uu;

    invoke-direct {v1}, Lcom/vungle/publisher/uu;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 79
    return-void

    .line 50
    :pswitch_0
    iget-object v1, p0, Lcom/vungle/publisher/zk;->b:Lcom/vungle/publisher/pv;

    invoke-static {}, Lcom/vungle/publisher/un;->values()[Lcom/vungle/publisher/un;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/pv;->a([Lcom/vungle/publisher/un;)V

    goto/16 :goto_0

    .line 53
    :pswitch_1
    iget-object v1, p0, Lcom/vungle/publisher/zk;->b:Lcom/vungle/publisher/pv;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/vungle/publisher/un;

    const/4 v3, 0x0

    sget-object v4, Lcom/vungle/publisher/un;->b:Lcom/vungle/publisher/un;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/pv;->a([Lcom/vungle/publisher/un;)V

    goto/16 :goto_0

    .line 59
    :cond_4
    const-string v1, "disabling"

    goto/16 :goto_1

    .line 66
    :cond_5
    iget-object v2, p0, Lcom/vungle/publisher/zk;->b:Lcom/vungle/publisher/pv;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "VungleConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setting streaming response timeout "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, v2, Lcom/vungle/publisher/pv;->d:I

    goto :goto_2

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
