.class final Lcom/vungle/publisher/afq$a$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afq$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/afq$a;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/afq$a;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vungle/publisher/afq$a$1;->a:Lcom/vungle/publisher/afq$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vungle/publisher/afq$a$1;->a:Lcom/vungle/publisher/afq$a;

    iget-object v0, v0, Lcom/vungle/publisher/afq$a;->c:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/qo;

    invoke-direct {v1}, Lcom/vungle/publisher/qo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
