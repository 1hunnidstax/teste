.class final Lcom/vungle/publisher/pi$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/pi;->c(Lcom/vungle/publisher/env/AndroidDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/env/AndroidDevice;

.field final synthetic b:Lcom/vungle/publisher/pi;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/pi;Lcom/vungle/publisher/env/AndroidDevice;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vungle/publisher/pi$1;->b:Lcom/vungle/publisher/pi;

    iput-object p2, p0, Lcom/vungle/publisher/pi$1;->a:Lcom/vungle/publisher/env/AndroidDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vungle/publisher/pi$1;->b:Lcom/vungle/publisher/pi;

    iget-object v1, p0, Lcom/vungle/publisher/pi$1;->a:Lcom/vungle/publisher/env/AndroidDevice;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/pi;->d(Lcom/vungle/publisher/env/AndroidDevice;)V

    .line 37
    return-void
.end method
