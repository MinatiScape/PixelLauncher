.class public final synthetic LU0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU0/c;->a:Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LU0/c;->a:Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->setShortcutId(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    return-void
.end method
