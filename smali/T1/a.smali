.class public LT1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT1/r;


# static fields
.field public static final b:Ljava/lang/Integer;


# instance fields
.field public a:La2/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, LT1/a;->b:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, LT1/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, La2/g;

    sget-object v1, LT1/a;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/android/launcher3/R$raw;->categories:I

    const-string v3, "categories_v"

    invoke-direct {v0, p1, v3, v1, v2}, La2/g;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    iput-object v0, p0, LT1/a;->a:La2/g;

    const/16 p0, 0x3a98

    .line 4
    invoke-virtual {v0, p0}, La2/g;->g(I)V

    return-void
.end method

.method public static c(I)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    const-string v0, "en-"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, LT1/a;->a:La2/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0x3a98

    .line 2
    invoke-virtual {v0, v2}, La2/g;->g(I)V

    .line 3
    iget-object p0, p0, LT1/a;->a:La2/g;

    invoke-static {p1}, LT1/a;->c(I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, La2/g;->c([B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    new-instance p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_1
    return-object v1
.end method

.method public b(Ljava/lang/String;)LT1/t;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, LT1/a;->a:La2/g;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x3a98

    .line 2
    invoke-virtual {v1, v2}, La2/g;->g(I)V

    .line 3
    iget-object p0, p0, LT1/a;->a:La2/g;

    invoke-static {p1}, LT1/a;->d(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, La2/g;->c([B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    new-instance p1, LT1/t;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p1, v0}, LT1/t;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method
