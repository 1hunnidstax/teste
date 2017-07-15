.class public final Lcom/vungle/publisher/abx$a;
.super Lcom/vungle/publisher/acb$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/abx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/abx$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/acb$a",
        "<",
        "Lcom/vungle/publisher/gy;",
        "Lcom/vungle/publisher/he;",
        "Lcom/vungle/publisher/abx;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/abx$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/acb$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    new-array v0, p1, [Lcom/vungle/publisher/abx;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/vungle/publisher/abx;

    invoke-direct {v0}, Lcom/vungle/publisher/abx;-><init>()V

    return-object v0
.end method
