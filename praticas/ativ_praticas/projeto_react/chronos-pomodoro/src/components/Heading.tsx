import React from "react";

type HeadersProps = {
  children: React.ReactNode;
}

export function Heading({ children }: HeadersProps) {
  return (
    <h1>
      {children}
    </h1>
  );
}