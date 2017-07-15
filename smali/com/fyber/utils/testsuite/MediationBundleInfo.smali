.class public Lcom/fyber/utils/testsuite/MediationBundleInfo;
.super Ljava/lang/Object;
.source "MediationBundleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/utils/testsuite/MediationBundleInfo$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/fyber/utils/testsuite/MediationBundleInfo;->a:Z

    .line 18
    iput-boolean p2, p0, Lcom/fyber/utils/testsuite/MediationBundleInfo;->b:Z

    .line 19
    iput-object p3, p0, Lcom/fyber/utils/testsuite/MediationBundleInfo;->c:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/fyber/utils/testsuite/MediationBundleInfo;->d:Ljava/lang/String;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fyber/utils/testsuite/MediationBundleInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 56
    if-ne p0, p1, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    .line 60
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_2
    check-cast p1, Lcom/fyber/utils/testsuite/MediationBundleInfo;

    .line 66
    iget-object v0, p0, Lcom/fyber/utils/testsuite/MediationBundleInfo;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/fyber/utils/testsuite/MediationBundleInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fyber/utils/testsuite/MediationBundleInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fyber/utils/testsuite/MediationBundleInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fyber/utils/testsuite/MediationBundleInfo;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isIntegrated()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/fyber/utils/testsuite/MediationBundleInfo;->b:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/fyber/utils/testsuite/MediationBundleInfo;->a:Z

    return v0
.end method
