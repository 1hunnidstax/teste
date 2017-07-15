.class final Lcom/inmobi/signals/b/c$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/inmobi/signals/b/c;->b()Lcom/inmobi/signals/b/c$a;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/inmobi/signals/b/c;->c()V

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/inmobi/signals/b/c$a;->a()V

    .line 67
    :cond_0
    return-void
.end method
