.class final Lcom/vungle/publisher/yc$7;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/yc;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/yc;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/yc;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/vungle/publisher/yc$7;->a:Lcom/vungle/publisher/yc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/yc$7;->a:Lcom/vungle/publisher/yc;

    iget-object v0, v0, Lcom/vungle/publisher/yc;->i:Lcom/vungle/publisher/aba;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/vungle/publisher/aba;->a(J)Lcom/vungle/publisher/we;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/we;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    iget-object v1, p0, Lcom/vungle/publisher/yc$7;->a:Lcom/vungle/publisher/yc;

    iget-object v1, v1, Lcom/vungle/publisher/yc;->j:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error sending unfilled ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
