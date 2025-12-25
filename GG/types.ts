import { LucideIcon } from "lucide-react";

export interface Feature {
  title: string;
  description: string;
  icon: LucideIcon;
}

export interface PlatformLink {
  name: string;
  icon: LucideIcon;
  url: string;
  primary?: boolean;
}