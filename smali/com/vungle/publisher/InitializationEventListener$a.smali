.class final Lcom/vungle/publisher/InitializationEventListener$a;
.super Lcom/vungle/publisher/qe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/InitializationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/lz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/vungle/publisher/qe;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/aq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/aq",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->a:Lcom/vungle/publisher/lz;

    invoke-virtual {v0}, Lcom/vungle/publisher/lz;->a()V

    .line 142
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/uu;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->a:Lcom/vungle/publisher/lz;

    invoke-virtual {v0}, Lcom/vungle/publisher/lz;->a()V

    .line 138
    return-void
.end method
