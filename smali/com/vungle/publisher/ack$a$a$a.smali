.class final Lcom/vungle/publisher/ack$a$a$a;
.super Lcom/vungle/publisher/acb$b$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ack$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/acb$b$a",
        "<",
        "Lcom/vungle/publisher/fk;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/vungle/publisher/acb$b$a;-><init>()V

    return-void
.end method
